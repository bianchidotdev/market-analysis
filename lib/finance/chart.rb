class Finance
  class Chart
    class << self
      def output_chart(file_name, js)
        File.open(file_name, 'w') { |file| file.write(construct_file(js))}
      end
  
      def construct_file(chart)
        <<~EOHTML
          <!DOCTYPE html>
          <html>
          <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
          <script src="chartkick.js"></script>
          #{chart}
          </html>
        EOHTML
      end
    end  
  end
end
