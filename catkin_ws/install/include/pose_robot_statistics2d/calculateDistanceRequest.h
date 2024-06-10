// Generated by gencpp from file pose_robot_statistics2d/calculateDistanceRequest.msg
// DO NOT EDIT!


#ifndef POSE_ROBOT_STATISTICS2D_MESSAGE_CALCULATEDISTANCEREQUEST_H
#define POSE_ROBOT_STATISTICS2D_MESSAGE_CALCULATEDISTANCEREQUEST_H


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
struct calculateDistanceRequest_
{
  typedef calculateDistanceRequest_<ContainerAllocator> Type;

  calculateDistanceRequest_()
    {
    }
  calculateDistanceRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct calculateDistanceRequest_

typedef ::pose_robot_statistics2d::calculateDistanceRequest_<std::allocator<void> > calculateDistanceRequest;

typedef boost::shared_ptr< ::pose_robot_statistics2d::calculateDistanceRequest > calculateDistanceRequestPtr;
typedef boost::shared_ptr< ::pose_robot_statistics2d::calculateDistanceRequest const> calculateDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace pose_robot_statistics2d

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_robot_statistics2d/calculateDistanceRequest";
  }

  static const char* value(const ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct calculateDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::pose_robot_statistics2d::calculateDistanceRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // POSE_ROBOT_STATISTICS2D_MESSAGE_CALCULATEDISTANCEREQUEST_H