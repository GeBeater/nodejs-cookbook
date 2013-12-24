#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
  when "smartos"
    default['nodejs']['install_method'] = 'package'
  else
    default['nodejs']['install_method'] = 'source'
end

default['nodejs']['version'] = '0.10.24'
default['nodejs']['checksum'] = '610cd733186842cb7f554336d6851a61b2d3d956050d62e49fa359a47640377a'
default['nodejs']['checksum_linux_x64'] = '6ef93f4a5b53cdd4471786dfc488ba9977cb3944285ed233f70c508b50f0cb5f'
default['nodejs']['checksum_linux_x86'] = 'fb6487e72d953451d55e28319c446151c1812ed21919168b82ab1664088ecf46'
default['nodejs']['dir'] = '/usr/local'
default['nodejs']['npm'] = '1.3.21'
default['nodejs']['src_url'] = "http://nodejs.org/dist"
default['nodejs']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2
default['nodejs']['check_sha'] = true

# Set this to true to install the legacy packages (0.8.x) from ubuntu/debian repositories; default is false (using the latest stable 0.10.x)
default['nodejs']['legacy_packages'] = false
