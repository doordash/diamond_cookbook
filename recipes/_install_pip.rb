package "python-pip"

case node['platform_family']
when 'debian'
  package "python-stdeb"
  bash "install diamond" do
    code "pypi-install diamond"
  end
else
  bash "install diamond" do
    code "pip install diamond"
  end
end
