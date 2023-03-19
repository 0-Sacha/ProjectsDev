
#include "ProjectCore/LoggerManager/LoggerManager.h"
#include "ProjectCore/LoggerManager/Loggers/BasicLoggerMacro.h"

int main()
{
	ProjectCore::LoggerManager::GetLoggerCore().Info("Sandbox Launch");
}
