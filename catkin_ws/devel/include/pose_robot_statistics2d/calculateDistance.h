// Generated by gencpp from file pose_robot_statistics2d/calculateDistance.msg
// DO NOT EDIT!


#ifndef POSE_ROBOT_STATISTICS2D_MESSAGE_CALCULATEDISTANCE_H
#define POSE_ROBOT_STATISTICS2D_MESSAGE_CALCULATEDISTANCE_H

#include <ros/service_traits.h>


#include <pose_robot_statistics2d/calculateDistanceRequest.h>
#include <pose_robot_statistics2d/calculateDistanceResponse.h>


namespace pose_robot_statistics2d
{

struct calculateDistance
{

typedef calculateDistanceRequest Request;
typedef calculateDistanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct calculateDistance
} // namespace pose_robot_statistics2d


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pose_robot_statistics2d::calculateDistance > {
  static const char* value()
  {
    return "817840b8f4d2300f89b98e0187dc919a";
  }

  static const char* value(const ::pose_robot_statistics2d::calculateDistance&) { return value(); }
};

template<>
struct DataType< ::pose_robot_statistics2d::calculateDistance > {
  static const char* value()
  {
    return "pose_robot_statistics2d/calculateDistance";
  }

  static const char* value(const ::pose_robot_statistics2d::calculateDistance&) { return value(); }
};


// service_traits::MD5Sum< ::pose_robot_statistics2d::calculateDistanceRequest> should match
// service_traits::MD5Sum< ::pose_robot_statistics2d::calculateDistance >
template<>
struct MD5Sum< ::pose_robot_statistics2d::calculateDistanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pose_robot_statistics2d::calculateDistance >::value();
  }
  static const char* value(const ::pose_robot_statistics2d::calculateDistanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pose_robot_statistics2d::calculateDistanceRequest> should match
// service_traits::DataType< ::pose_robot_statistics2d::calculateDistance >
template<>
struct DataType< ::pose_robot_statistics2d::calculateDistanceRequest>
{
  static const char* value()
  {
    return DataType< ::pose_robot_statistics2d::calculateDistance >::value();
  }
  static const char* value(const ::pose_robot_statistics2d::calculateDistanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pose_robot_statistics2d::calculateDistanceResponse> should match
// service_traits::MD5Sum< ::pose_robot_statistics2d::calculateDistance >
template<>
struct MD5Sum< ::pose_robot_statistics2d::calculateDistanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pose_robot_statistics2d::calculateDistance >::value();
  }
  static const char* value(const ::pose_robot_statistics2d::calculateDistanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pose_robot_statistics2d::calculateDistanceResponse> should match
// service_traits::DataType< ::pose_robot_statistics2d::calculateDistance >
template<>
struct DataType< ::pose_robot_statistics2d::calculateDistanceResponse>
{
  static const char* value()
  {
    return DataType< ::pose_robot_statistics2d::calculateDistance >::value();
  }
  static const char* value(const ::pose_robot_statistics2d::calculateDistanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POSE_ROBOT_STATISTICS2D_MESSAGE_CALCULATEDISTANCE_H
