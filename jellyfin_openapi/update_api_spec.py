import json
import os
import shutil
import requests

# Create a temporary directory
temp_dir = 'temp'
if not os.path.exists(temp_dir):
    os.mkdir(temp_dir)

lib_folder = './jellyfin_openapi'


def get_server_version(filePath):
    with open(filePath, "r") as file:
        current_spec = json.load(file)
    version = current_spec["info"]["version"]
    version_num = version.split(".")
    print(f"API version for ${filePath}: {version_num}")
    return version_num


def generate_spec_cmd(spec_path):
    # remove old lib to avoid conflicts
    if os.path.exists(lib_folder):
        os.removedirs(lib_folder)

    cmd = f"openapi-generator-cli generate -i {spec_path} -o {lib_folder} -g dart -c config.yaml"
    os.system(cmd)


try:
    # Download JSON from the specified URL
    url = "https://api.jellyfin.org/openapi/jellyfin-openapi-stable.json"
    response = requests.get(url)
    response.raise_for_status()  # Raise an exception if the request was unsuccessful

    # Save the JSON file to the temporary directory
    new_api_spec = os.path.join(temp_dir, "jellyfin-openapi-stable.json")
    with open(new_api_spec, "wb") as file:
        file.write(response.content)

    # open new
    version = get_server_version(new_api_spec)

    cur_api_spec_path = './jelly-api-latest.json'

    if os.path.exists(cur_api_spec_path):
        spec_dir = 'spec'
        # make dir to hold older specs
        if not os.path.exists(spec_dir):
            os.mkdir(spec_dir)
        # open current latest
        cur_version = get_server_version(cur_api_spec_path)

        # check is major or minor version has changed
        if int(version[0]) > int(cur_version[0]) or int(version[1]) > int(cur_version[1]):
            print(f'new version:{version} detected updating library')
            # Run the OpenAPI Generator command
            generate_spec_cmd(new_api_spec)

            # TODO For future, prepare and publish for pub.dev

            # move old spec to api_specs
            version_str = '.'.join(cur_version)
            os.rename(cur_api_spec_path, f'./jelly-api-{version_str}.json')
            shutil.move(f'./jelly-api-{cur_version}.json',
                        f'{spec_dir}/jelly-api-{cur_version}.json')

            shutil.move(new_api_spec, cur_api_spec_path)

            # Add the generated files to git and push
            # os.system("git add jellydart")
            # os.system("git commit -m 'Auto Action: Generate Dart client using OpenAPI Generator'")
            # os.system("git push")
        else:
            print('Newer Version not found because new major or minor versions were not found')

    else:
        print('current api spec file not found, installing latest spec')
        generate_spec_cmd(new_api_spec)
        shutil.move(new_api_spec, cur_api_spec_path)
except Exception as e:
    print('Failed to run script')
    print(e)
