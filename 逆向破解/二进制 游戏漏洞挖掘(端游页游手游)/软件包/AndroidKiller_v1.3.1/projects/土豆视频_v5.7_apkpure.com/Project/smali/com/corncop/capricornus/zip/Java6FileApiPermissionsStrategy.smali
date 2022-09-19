.class Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;
.super Ljava/lang/Object;
.source "Java6FileApiPermissionsStrategy.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;


# instance fields
.field private final canExecuteMethod:Ljava/lang/reflect/Method;

.field private final setExecutableMethod:Ljava/lang/reflect/Method;

.field private final setReadableMethod:Ljava/lang/reflect/Method;

.field private final setWritableMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/corncop/capricornus/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Ljava/io/File;

    const-string v1, "canExecute"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->canExecuteMethod:Ljava/lang/reflect/Method;

    .line 14
    const-class v0, Ljava/io/File;

    const-string/jumbo v1, "setExecutable"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setExecutableMethod:Ljava/lang/reflect/Method;

    .line 15
    const-class v0, Ljava/io/File;

    const-string/jumbo v1, "setReadable"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setReadableMethod:Ljava/lang/reflect/Method;

    .line 16
    const-class v0, Ljava/io/File;

    const-string/jumbo v1, "setWritable"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setWritableMethod:Ljava/lang/reflect/Method;

    .line 17
    return-void
.end method

.method private canExecute(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->canExecuteMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private setExecutable(Ljava/io/File;ZZ)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "executable"    # Z
    .param p3, "ownerOnly"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setExecutableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private setReadable(Ljava/io/File;ZZ)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "executable"    # Z
    .param p3, "ownerOnly"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setReadableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private setWritable(Ljava/io/File;ZZ)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "executable"    # Z
    .param p3, "ownerOnly"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setWritableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPermissions(Ljava/io/File;)Lcom/corncop/capricornus/zip/ZTFilePermissions;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    .line 20
    new-instance v0, Lcom/corncop/capricornus/zip/ZTFilePermissions;

    invoke-direct {v0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;-><init>()V

    .line 22
    .local v0, "permissions":Lcom/corncop/capricornus/zip/ZTFilePermissions;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setDirectory(Z)V

    .line 24
    invoke-direct {p0, p1}, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->canExecute(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanExecute(Z)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanWrite(Z)V

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanWrite(Z)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanWrite(Z)V

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanRead(Z)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanRead(Z)V

    .line 42
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanRead(Z)V

    .line 45
    :cond_2
    return-object v0
.end method

.method public setPermissions(Ljava/io/File;Lcom/corncop/capricornus/zip/ZTFilePermissions;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "permissions"    # Lcom/corncop/capricornus/zip/ZTFilePermissions;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanExecute()Z

    move-result v3

    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanExecute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanExecute()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v3, v0}, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setExecutable(Ljava/io/File;ZZ)Z

    .line 50
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanWrite()Z

    move-result v3

    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanWrite()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v3, v0}, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setWritable(Ljava/io/File;ZZ)Z

    .line 51
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanRead()Z

    move-result v0

    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanRead()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanRead()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;->setReadable(Ljava/io/File;ZZ)Z

    .line 52
    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v0, v2

    .line 50
    goto :goto_1

    :cond_2
    move v1, v2

    .line 51
    goto :goto_2
.end method
