.class Lcom/ultrapower/mcs/engine/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInfo"


# instance fields
.field private context:Landroid/content/Context;

.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/PhoneInfo;->context:Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcom/ultrapower/mcs/engine/PhoneInfo;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCameraInfo()[I
    .locals 9

    .prologue
    .line 191
    const/4 v7, 0x3

    new-array v5, v7, [Landroid/hardware/Camera$Size;

    .line 193
    .local v5, "size":[Landroid/hardware/Camera$Size;
    const/4 v1, 0x0

    .local v1, "height":I
    const/4 v6, 0x0

    .line 194
    .local v6, "width":I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 196
    .local v3, "numberCamera":I
    const/4 v0, 0x0

    .line 197
    .local v0, "camera":Landroid/hardware/Camera;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 199
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 201
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    aput-object v7, v5, v2

    .line 202
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 203
    aget-object v7, v5, v2

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    if-le v7, v1, :cond_0

    .line 205
    aget-object v7, v5, v2

    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    .line 206
    aget-object v7, v5, v2

    iget v6, v7, Landroid/hardware/Camera$Size;->width:I

    .line 197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v4    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    const/4 v8, 0x1

    aput v6, v7, v8

    return-object v7
.end method

.method public getCpuFrequence()J
    .locals 8

    .prologue
    .line 114
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/cat"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v7, v0, v6

    .line 116
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 118
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 119
    .local v4, "process":Ljava/lang/Process;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "line":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 126
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v6

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public getCpuInfo()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 54
    const-string v5, "/proc/cpuinfo"

    .line 55
    .local v5, "str1":Ljava/lang/String;
    const-string v6, ""

    .line 56
    .local v6, "str2":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v1, v8

    const-string v7, ""

    aput-object v7, v1, v9

    .line 59
    .local v1, "cpuInfo":[Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v4, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 61
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 62
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 64
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 67
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    aget-object v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    .line 69
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "i":I
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    return-object v1

    .line 70
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public getCpuName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 174
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 176
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "text":Ljava/lang/String;
    const-string v6, ":\\s+"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    :cond_0
    const/4 v6, 0x1

    aget-object v6, v0, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "i":I
    .end local v5    # "text":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 186
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 183
    :catch_1
    move-exception v2

    .line 184
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getCurCpuFreq()J
    .locals 8

    .prologue
    .line 155
    const-string v3, "N/A"

    .line 157
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 160
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 167
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    return-wide v6

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMinCpuFreq()J
    .locals 10

    .prologue
    .line 132
    const-string v6, ""

    .line 135
    .local v6, "result":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/cat"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v8, v0, v7

    .line 137
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 138
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 139
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 140
    .local v3, "in":Ljava/io/InputStream;
    const/16 v7, 0x18

    new-array v5, v7, [B

    .line 141
    .local v5, "re":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    return-wide v8

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    const-string v6, "N/A"

    goto :goto_1
.end method

.method public getNumCores()I
    .locals 6

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/ultrapower/mcs/engine/PhoneInfo$1CpuFilter;

    invoke-direct {v3, p0}, Lcom/ultrapower/mcs/engine/PhoneInfo$1CpuFilter;-><init>(Lcom/ultrapower/mcs/engine/PhoneInfo;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 97
    .local v2, "files":[Ljava/io/File;
    const-string v3, "PhoneInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PhoneInfo"

    const-string v4, "CPU Count: Failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getTotalMemory()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 28
    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-string v13, ""

    aput-object v13, v9, v12

    .line 29
    .local v9, "result":[Ljava/lang/String;
    iget-object v12, p0, Lcom/ultrapower/mcs/engine/PhoneInfo;->context:Landroid/content/Context;

    const-string v13, "activity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    iput-object v12, p0, Lcom/ultrapower/mcs/engine/PhoneInfo;->mActivityManager:Landroid/app/ActivityManager;

    .line 30
    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 31
    .local v8, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v12, p0, Lcom/ultrapower/mcs/engine/PhoneInfo;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v12, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .local v6, "mTotalMem":J
    iget-wide v4, v8, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 34
    .local v4, "mAvailMem":J
    const-string v10, "/proc/meminfo"

    .line 38
    .local v10, "str1":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "localFileReader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v12, 0x2000

    invoke-direct {v2, v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 40
    .local v2, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 41
    .local v11, "str2":Ljava/lang/String;
    const-string v12, "\\s+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/lit16 v12, v12, 0x400

    int-to-long v6, v12

    .line 43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "localFileReader":Ljava/io/FileReader;
    .end local v11    # "str2":Ljava/lang/String;
    :goto_0
    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    .line 49
    const/4 v12, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    .line 50
    return-object v9

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
