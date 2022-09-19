.class public Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;
.super Ljava/lang/Object;
.source "RestAPIDEBUG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;
    }
.end annotation


# static fields
.field private static APIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->APIS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private InitAPIS()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 37
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->APIS:Ljava/util/List;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;

    const-string v2, "api.laifeng.com"

    const-string v3, "http://captcha.laifeng.com"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->APIS:Ljava/util/List;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;

    const-string v2, "10.10.72.147:8080"

    const-string v3, "http://captcha.laifeng.com"

    invoke-direct {v1, v2, v3, v5}, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->APIS:Ljava/util/List;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;

    const-string v2, "10.155.15.39:7070"

    const-string v3, "http://captcha.laifeng.com"

    invoke-direct {v1, v2, v3, v5}, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->APIS:Ljava/util/List;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;

    const-string v2, "10.105.20.10:8180"

    const-string v3, "http://captcha.laifeng.com"

    invoke-direct {v1, v2, v3, v5}, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->APIS:Ljava/util/List;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;

    const-string v2, "10.100.20.24:8081"

    const-string v3, "http://captcha.laifeng.com"

    invoke-direct {v1, v2, v3, v5}, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->instance:Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->instance:Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->instance:Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;

    .line 23
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->instance:Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->InitAPIS()V

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->instance:Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAPIS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;->APIS:Ljava/util/List;

    return-object v0
.end method
