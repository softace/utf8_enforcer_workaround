# https://gist.github.com/358664 (by aslakhellesoy)
module RackHeaderHack
  def set_headers(headers)
    driver = page.driver.browser
    def driver.env
      @env.merge(super)
    end
    def driver.env=(env)
      @env = env
    end
    driver.env = headers
  end
end
World(RackHeaderHack)
