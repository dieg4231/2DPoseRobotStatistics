// Generated by gencpp from file pose_robot_statistics2d/SetTargetAngleRequest.msg
// DO NOT EDIT!


#ifndef POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETANGLEREQUEST_H
#define POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETANGLEREQUEST_H


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
struct SetTargetAngleRequest_
{
  typedef SetTargetAngleRequest_<ContainerAllocator> Type;

  SetTargetAngleRequest_()
    : angle(0.0)  {
    }
  SetTargetAngleRequest_(const ContainerAllocator& _alloc)
    : angle(0.0)  {
  (void)_alloc;
    }



   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTargetAngleRequest_

typedef ::pose_robot_statistics2d::SetTargetAngleRequest_<std::allocator<void> > SetTargetAngleRequest;

typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetAngleRequest > SetTargetAngleRequestPtr;
typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetAngleRequest const> SetTargetAngleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_robot_statistics2d

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4edb55038e2b888976a0c0c56935341c";
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4edb55038e2b8889ULL;
  static const uint64_t static_value2 = 0x76a0c0c56935341cULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_robot_statistics2d/SetTargetAngleRequest";
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 angle\n"
;
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTargetAngleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_robot_statistics2d::SetTargetAngleRequest_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETANGLEREQUEST_H
