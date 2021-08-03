/*
 *  Copyright (c) 2021, The OpenThread Authors.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *  1. Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *  2. Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *  3. Neither the name of the copyright holder nor the
 *     names of its contributors may be used to endorse or promote products
 *     derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 *  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 *  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 *  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 *  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 *  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 *  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 *  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 *  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 */
/***************************************************************************//**
 * @file
 * @brief Example implementation of a custom CLI for OpenThread.
 *
 ******************************************************************************/
#include <stdint.h>
#include "openthread/cli.h"
#include "openthread/coprocessor_cli.h"
#include <common/code_utils.hpp>

static void helloWorld(void *aContext, uint8_t aArgsLength, char *aArgs[])
{
    OT_UNUSED_VARIABLE(aContext);
    OT_UNUSED_VARIABLE(aArgsLength);
    OT_UNUSED_VARIABLE(aArgs);

    otCliOutputFormat("Hello World! :D\n");
}
static void argTest(void *aContext, uint8_t aArgsLength, char *aArgs[])
{
    OT_UNUSED_VARIABLE(aContext);
    OT_UNUSED_VARIABLE(aArgsLength);
    OT_UNUSED_VARIABLE(aArgs);

    for (uint8_t i = 0; i < aArgsLength; i++)
    {
        otCliOutputFormat("Arg: %s\n", aArgs[i]);
    }
}

//------------------------------------------------------------------------------

static void helpCommand(void *aContext, uint8_t aArgsLength, char *aArgs[]);

static otCliCommand exampleCommands[] = {
    {"help", helpCommand},
    {"hw", helloWorld},
    {"argtest", argTest},
};

static void helpCommand(void *aContext, uint8_t aArgsLength, char *aArgs[])
{
    OT_UNUSED_VARIABLE(aContext);
    OT_UNUSED_VARIABLE(aArgsLength);
    OT_UNUSED_VARIABLE(aArgs);
    otCliOutputCommands(exampleCommands, OT_ARRAY_LENGTH(exampleCommands));
}

void exampleCliCommand(void *aContext, uint8_t aArgsLength, char *aArgs[])
{
    otError error = otCoprocessorCliHandleCommand(aContext, aArgsLength, aArgs, OT_ARRAY_LENGTH(exampleCommands), exampleCommands);

    if (error == OT_ERROR_INVALID_COMMAND)
    {
        helpCommand(NULL, 0, NULL);
    }
}