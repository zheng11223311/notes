.class Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;
.super Ljava/lang/Object;
.source "ZTFilePermissionsUtil.java"


# static fields
.field private static final DEFAULT_STRATEGY:Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

.field private static final GROUP_EXECUTE_FLAG:I = 0x8

.field private static final GROUP_READ_FLAG:I = 0x20

.field private static final GROUP_WRITE_FLAG:I = 0x10

.field private static final NOP_STRATEGY:Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

.field private static final OTHERS_EXECUTE_FLAG:I = 0x1

.field private static final OTHERS_READ_FLAG:I = 0x4

.field private static final OTHERS_WRITE_FLAG:I = 0x2

.field private static final OWNER_EXECUTE_FLAG:I = 0x40

.field private static final OWNER_READ_FLAG:I = 0x100

.field private static final OWNER_WRITE_FLAG:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil$1;

    invoke-direct {v0}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil$1;-><init>()V

    sput-object v0, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->NOP_STRATEGY:Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    .line 103
    invoke-static {}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->fetchDefaultStrategy()Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    move-result-object v0

    sput-object v0, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->DEFAULT_STRATEGY:Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static addFlag(ZI)I
    .locals 0
    .param p0, "condition"    # Z
    .param p1, "flag"    # I

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .end local p1    # "flag":I
    :goto_0
    return p1

    .restart local p1    # "flag":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static fetchDefaultStrategy()Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/corncop/capricornus/zip/Java7Nio2ApiPermissionsStrategy;

    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->tryInstantiateStrategy(Ljava/lang/Class;)Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    move-result-object v0

    .line 108
    .local v0, "strategy":Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;
    if-nez v0, :cond_0

    .line 109
    const-class v1, Lcom/corncop/capricornus/zip/Java6FileApiPermissionsStrategy;

    invoke-static {v1}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->tryInstantiateStrategy(Ljava/lang/Class;)Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    move-result-object v0

    .line 112
    :cond_0
    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->NOP_STRATEGY:Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    .line 116
    :cond_1
    return-object v0
.end method

.method static fromPosixFileMode(I)Lcom/corncop/capricornus/zip/ZTFilePermissions;
    .locals 4
    .param p0, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/corncop/capricornus/zip/ZTFilePermissions;

    invoke-direct {v0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;-><init>()V

    .line 74
    .local v0, "permissions":Lcom/corncop/capricornus/zip/ZTFilePermissions;
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanExecute(Z)V

    .line 75
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanExecute(Z)V

    .line 76
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanExecute(Z)V

    .line 78
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanWrite(Z)V

    .line 79
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanWrite(Z)V

    .line 80
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanWrite(Z)V

    .line 82
    and-int/lit16 v1, p0, 0x100

    if-lez v1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOwnerCanRead(Z)V

    .line 83
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_7

    move v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setGroupCanRead(Z)V

    .line 84
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_8

    :goto_8
    invoke-virtual {v0, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->setOthersCanRead(Z)V

    .line 86
    return-object v0

    :cond_0
    move v1, v3

    .line 74
    goto :goto_0

    :cond_1
    move v1, v3

    .line 75
    goto :goto_1

    :cond_2
    move v1, v3

    .line 76
    goto :goto_2

    :cond_3
    move v1, v3

    .line 78
    goto :goto_3

    :cond_4
    move v1, v3

    .line 79
    goto :goto_4

    :cond_5
    move v1, v3

    .line 80
    goto :goto_5

    :cond_6
    move v1, v3

    .line 82
    goto :goto_6

    :cond_7
    move v1, v3

    .line 83
    goto :goto_7

    :cond_8
    move v2, v3

    .line 84
    goto :goto_8
.end method

.method static getDefaultStategy()Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->DEFAULT_STRATEGY:Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;

    return-object v0
.end method

.method static toPosixFileMode(Lcom/corncop/capricornus/zip/ZTFilePermissions;)I
    .locals 3
    .param p0, "permissions"    # Lcom/corncop/capricornus/zip/ZTFilePermissions;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "mode":I
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanExecute()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 47
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanExecute()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 48
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanExecute()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 50
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanWrite()Z

    move-result v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanWrite()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 52
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanWrite()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOwnerCanRead()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 55
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isGroupCanRead()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 56
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isOthersCanRead()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;->addFlag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 58
    return v0
.end method

.method private static tryInstantiateStrategy(Ljava/lang/Class;)Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;",
            ">;)",
            "Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
