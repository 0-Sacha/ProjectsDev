
#include "ProjectCore/LoggerManager/LoggerManager.h"
#include "ProjectCore/LoggerManager/Loggers/BasicLoggerMacro.h"
#include "ProjectCore/Json/JsonFactory.h"

int main(int argc, char** argv)
{
	ProjectCore::LoggerManager::GetLoggerCore().Info("Sandbox Launch");

	if (argc < 2)
	{
		ProjectCore::LoggerManager::GetLoggerCore().Error("No input file given");
		return 1;
	}

	std::string jsonpath = argv[1];
	ProjectCore::LoggerManager::GetLoggerCore().Trace("Json Path: {}", jsonpath);
	auto jsoncontent = ProjectCore::JSON::JsonFactory::FromPath(jsonpath);
	ProjectCore::LoggerManager::GetLoggerCore().Trace("Json Content: {}", jsoncontent);
}
