.class Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;
.super Ljava/lang/Object;
.source "Java7Nio2ApiPermissionsStrategy.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;


# instance fields
.field private final GROUP_EXECUTE:Ljava/lang/Object;

.field private final GROUP_READ:Ljava/lang/Object;

.field private final GROUP_WRITE:Ljava/lang/Object;

.field private final OTHERS_EXECUTE:Ljava/lang/Object;

.field private final OTHERS_READ:Ljava/lang/Object;

.field private final OTHERS_WRITE:Ljava/lang/Object;

.field private final OWNER_EXECUTE:Ljava/lang/Object;

.field private final OWNER_READ:Ljava/lang/Object;

.field private final OWNER_WRITE:Ljava/lang/Object;

.field private final filesClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getPosixFilePermissionsMethod:Ljava/lang/reflect/Method;

.field private final linkOptionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final linkOptionsArray:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private final pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final posixFilePermissionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final setPosixFilePermissionsMethod:Ljava/lang/reflect/Method;

.field private final toPathMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->isPosix()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/corncop/capricornus/zip/ZipException;

    const-string v2, "File system does not support POSIX file attributes"

    invoke-direct {v1, v2}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    const-string v1, "java.nio.file.attribute.PosixFilePermission"

    const-class v2, Ljava/lang/Enum;

    .line 43
    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getClassForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->posixFilePermissionClass:Ljava/lang/Class;

    .line 44
    iget-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->posixFilePermissionClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 45
    .local v0, "constants":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_READ:Ljava/lang/Object;

    .line 46
    aget-object v1, v0, v6

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_WRITE:Ljava/lang/Object;

    .line 47
    aget-object v1, v0, v7

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_EXECUTE:Ljava/lang/Object;

    .line 48
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_READ:Ljava/lang/Object;

    .line 49
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_WRITE:Ljava/lang/Object;

    .line 50
    const/4 v1, 0x5

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_EXECUTE:Ljava/lang/Object;

    .line 51
    const/4 v1, 0x6

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_READ:Ljava/lang/Object;

    .line 52
    const/4 v1, 0x7

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_WRITE:Ljava/lang/Object;

    .line 53
    const/16 v1, 0x8

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_EXECUTE:Ljava/lang/Object;

    .line 55
    const-string v1, "java.nio.file.LinkOption"

    const-class v2, Ljava/lang/Enum;

    .line 56
    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getClassForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->linkOptionClass:Ljava/lang/Class;

    .line 57
    iget-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->linkOptionClass:Ljava/lang/Class;

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    check-cast v1, [Ljava/lang/Enum;

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->linkOptionsArray:[Ljava/lang/Enum;

    .line 58
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->linkOptionsArray:[Ljava/lang/Enum;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->linkOptionClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    aget-object v1, v1, v5

    aput-object v1, v2, v5

    .line 60
    const-string v1, "java.nio.file.Files"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getClassForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->filesClass:Ljava/lang/Class;

    .line 61
    const-string v1, "java.nio.file.Path"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getClassForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->pathClass:Ljava/lang/Class;

    .line 63
    const-class v1, Ljava/io/File;

    const-string/jumbo v2, "toPath"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->toPathMethod:Ljava/lang/reflect/Method;

    .line 64
    iget-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->filesClass:Ljava/lang/Class;

    const-string/jumbo v2, "setPosixFilePermissions"

    new-array v3, v7, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->pathClass:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/util/Set;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->setPosixFilePermissionsMethod:Ljava/lang/reflect/Method;

    .line 65
    iget-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->filesClass:Ljava/lang/Class;

    const-string v2, "getPosixFilePermissions"

    new-array v3, v7, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->pathClass:Ljava/lang/Class;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->linkOptionsArray:[Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->getPosixFilePermissionsMethod:Ljava/lang/reflect/Method;

    .line 66
    return-void
.end method

.method private addIf(ZLjava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .param p1, "condition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/Set",
            "<TE;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p3, "el":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    return-void
.end method

.method private getPosixFilePermissions(Ljava/io/File;)Ljava/util/Set;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->getPosixFilePermissionsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->linkOptionsArray:[Ljava/lang/Enum;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static isPosix()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 136
    const-string v4, "java.nio.file.FileSystems"

    const-class v5, Ljava/lang/Object;

    .line 137
    invoke-static {v4, v5}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getClassForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDefault"

    new-array v6, v7, [Ljava/lang/Class;

    .line 136
    invoke-static {v4, v5, v6}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 138
    .local v1, "getDefaultMethod":Ljava/lang/reflect/Method;
    const-string v4, "java.nio.file.FileSystem"

    const-class v5, Ljava/lang/Object;

    .line 139
    invoke-static {v4, v5}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getClassForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "supportedFileAttributeViews"

    new-array v6, v7, [Ljava/lang/Class;

    .line 138
    invoke-static {v4, v5, v6}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 141
    .local v2, "supportedFileAttributeViewsMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "fileSystem":Ljava/lang/Object;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 145
    .local v3, "views":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "posix"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method private setPosixFilePermissions(Ljava/io/File;Ljava/util/Set;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->setPosixFilePermissionsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private toPath(Ljava/io/File;)Ljava/lang/Object;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->toPathMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPermissions(Ljava/io/File;)Lcom/corncop/capricornus/zip/ZTFilePermissions;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 69
    new-instance v0, Lcom/corncop/capricornus/zip/ZTFilePermissions;

    invoke-direct {v0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;-><init>()V

    .line 70
    .local v0, "permissions":Lcom/corncop/capricornus/zip/ZTFilePermissions;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setDirectory(Z)V

    .line 72
    invoke-direct {p0, p1}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->getPosixFilePermissions(Ljava/io/File;)Ljava/util/Set;

    move-result-object v1

    .line 74
    .local v1, "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<*>;"
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_READ:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanRead(Z)V

    .line 75
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_WRITE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanWrite(Z)V

    .line 76
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_EXECUTE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanExecute(Z)V

    .line 78
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_READ:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanRead(Z)V

    .line 79
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_WRITE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanWrite(Z)V

    .line 80
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_EXECUTE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanExecute(Z)V

    .line 82
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_READ:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanRead(Z)V

    .line 83
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_WRITE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanWrite(Z)V

    .line 84
    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_EXECUTE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanExecute(Z)V

    .line 86
    return-object v0
.end method

.method public setPermissions(Ljava/io/File;Lcom/corncop/capricornus/zip/ZTFilePermissions;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "permissions"    # Lcom/corncop/capricornus/zip/ZTFilePermissions;

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanRead()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_READ:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanRead()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_READ:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanWrite()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_WRITE:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanExecute()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OWNER_EXECUTE:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanRead()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_READ:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanWrite()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_WRITE:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanExecute()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->GROUP_EXECUTE:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanRead()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_READ:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanWrite()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_WRITE:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanExecute()Z

    move-result v1

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->OTHERS_EXECUTE:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->addIf(ZLjava/util/Set;Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;->setPosixFilePermissions(Ljava/io/File;Ljava/util/Set;)V

    .line 105
    return-void
.end method
