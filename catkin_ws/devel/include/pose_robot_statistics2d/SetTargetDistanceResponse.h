// Generated by gencpp from file pose_robot_statistics2d/SetTargetDistanceResponse.msg
// DO NOT EDIT!


#ifndef POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETDISTANCERESPONSE_H
#define POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETDISTANCERESPONSE_H


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
struct SetTargetDistanceResponse_
{
  typedef SetTargetDistanceResponse_<ContainerAllocator> Type;

  SetTargetDistanceResponse_()
    : success(false)  {
    }
  SetTargetDistanceResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetTargetDistanceResponse_

typedef ::pose_robot_statistics2d::SetTargetDistanceResponse_<std::allocator<void> > SetTargetDistanceResponse;

typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceResponse > SetTargetDistanceResponsePtr;
typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceResponse const> SetTargetDistanceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_robot_statistics2d

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_robot_statistics2d/SetTargetDistanceResponse";
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTargetDistanceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_robot_statistics2d::SetTargetDistanceResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETDISTANCERESPONSE_H
