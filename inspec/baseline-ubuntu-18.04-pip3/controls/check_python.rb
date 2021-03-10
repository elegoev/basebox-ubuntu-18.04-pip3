# copyright: 2021, Urs Voegele

title "check python3"

# check python3 command
control "python3-1.0" do                        # A unique ID for this control
  impact 1.0                                   # The criticality, if this control fails.
  title "check if python3 command exists"      # A human-readable title
  desc "check python3 command"
  describe command('python3 --version') do
    its('exit_status') { should eq 0 }
  end
end

# check pip3 command
control "pip3-1.0" do                          # A unique ID for this control
  impact 1.0                                   # The criticality, if this control fails.
  title "check if pip3 command exists"         # A human-readable title
  desc "check pip3 command"
  describe command('pip3 --version') do
    its('exit_status') { should eq 0 }
  end
end
