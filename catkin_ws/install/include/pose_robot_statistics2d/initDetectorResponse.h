// Generated by gencpp from file pose_robot_statistics2d/initDetectorResponse.msg
// DO NOT EDIT!


#ifndef POSE_ROBOT_STATISTICS2D_MESSAGE_INITDETECTORRESPONSE_H
#define POSE_ROBOT_STATISTICS2D_MESSAGE_INITDETECTORRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pose_robot_statistics2d
{
template <class ContainerAllocator>
struct initDetectorResponse_
{
  typedef initDetectorResponse_<ContainerAllocator> Type;

  initDetectorResponse_()
    : isDetected(false)  {
    }
  initDetectorResponse_(const ContainerAllocator& _alloc)
    : isDetected(false)  {
  (void)_alloc;
    }



   typedef uint8_t _isDetected_type;
  _isDetected_type isDetected;





  typedef boost::shared_ptr< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct initDetectorResponse_

typedef ::pose_robot_statistics2d::initDetectorResponse_<std::allocator<void> > initDetectorResponse;

typedef boost::shared_ptr< ::pose_robot_statistics2d::initDetectorResponse > initDetectorResponsePtr;
typedef boost::shared_ptr< ::pose_robot_statistics2d::initDetectorResponse const> initDetectorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator2> & rhs)
{
  return lhs.isDetected == rhs.isDetected;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_robot_statistics2d

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acc79b946844b63a8a389c71b5098c7a";
  }

  static const char* value(const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xacc79b946844b63aULL;
  static const uint64_t static_value2 = 0x8a389c71b5098c7aULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_robot_statistics2d/initDetectorResponse";
  }

  static const char* value(const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool isDetected\n"
"\n"
"\n"
;
  }

  static const char* value(const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.isDetected);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct initDetectorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_robot_statistics2d::initDetectorResponse_<ContainerAllocator>& v)
  {
    s << indent << "isDetected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isDetected);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_ROBOT_STATISTICS2D_MESSAGE_INITDETECTORRESPONSE_H
