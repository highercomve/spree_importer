#encoding: utf-8
module SpreeImporter
  module Mappers
    class ImageMapper < BaseMapper
      def load spreadsheet, row, data
        cell = spreadsheet.cell(row, @col)

        unless cell.nil?
          data[:images] = [] unless data[:images]
          data[:images] += parse(cell)
        end
      end
    end
  end
end
