describe "workstation::default" do

  describe package('tree') do
    it { should be_installed }
  end
  
  describe package('git') do
    it { should be_installed }
  end

end
