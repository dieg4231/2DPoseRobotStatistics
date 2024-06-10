// Generated by gencpp from file pose_robot_statistics2d/SetTargetDistanceRequest.msg
// DO NOT EDIT!


#ifndef POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETDISTANCEREQUEST_H
#define POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETDISTANCEREQUEST_H


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
struct SetTargetDistanceRequest_
{
  typedef SetTargetDistanceRequest_<ContainerAllocator> Type;

  SetTargetDistanceRequest_()
    : distance(0.0)  {
    }
  SetTargetDistanceRequest_(const ContainerAllocator& _alloc)
    : distance(0.0)  {
  (void)_alloc;
    }



   typedef double _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTargetDistanceRequest_

typedef ::pose_robot_statistics2d::SetTargetDistanceRequest_<std::allocator<void> > SetTargetDistanceRequest;

typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceRequest > SetTargetDistanceRequestPtr;
typedef boost::shared_ptr< ::pose_robot_statistics2d::SetTargetDistanceRequest const> SetTargetDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator1> & lhs, const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_robot_statistics2d

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acff7fda0c683c872875f5c4b069f124";
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xacff7fda0c683c87ULL;
  static const uint64_t static_value2 = 0x2875f5c4b069f124ULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_robot_statistics2d/SetTargetDistanceRequest";
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 distance\n"
;
  }

  static const char* value(const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTargetDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_robot_statistics2d::SetTargetDistanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_ROBOT_STATISTICS2D_MESSAGE_SETTARGETDISTANCEREQUEST_H
