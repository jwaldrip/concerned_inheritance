require 'spec_helper'
require 'concerned_inheritance'

describe ConcernedInheritance do

  let(:klass) do
    Class.new do
      extend ConcernedInheritance
    end
  end

  describe '.extended' do
    context 'on a module' do
      it 'should extend ModuleMethods' do
         Module.new.extend(ConcernedInheritance).singleton_class.ancestors.should include ConcernedInheritance::ModuleMethods
      end
    end

    context 'on a class' do
      it 'should extend ClassMethods' do
        Class.new.extend(ConcernedInheritance).singleton_class.ancestors.should include ConcernedInheritance::ClassMethods
      end
    end
  end

  describe '.define_inherited_callback' do
    it 'should include the callback' do
      block = Proc.new { }
      klass.send :define_inherited_callback, &block
      klass.instance_variable_get(:@inherited_callbacks).should include block
    end
  end

end