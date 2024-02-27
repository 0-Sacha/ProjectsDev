
#include "ProjectCore/LoggerManager/LoggerManager.h"
#include "ProjectCore/LoggerManager/Loggers/BasicLoggerMacro.h"
#include "ProjectCore/Json/JsonFactory.h"

#include <iostream>

int main(int argc, char** argv)
{
	std::cout << "Hello" << std::endl;
	ProjectCore::LoggerManager::GetLoggerCore().Info("Sandbox Launch");
}
