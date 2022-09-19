.class public Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;
.super Lcom/youku/laifeng/libcuteroom/model/factory/AbsFactory;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;
    }
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String;

.field private static mFactory:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private mMakeProccess:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->CLASS_NAME:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mFactory:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/factory/AbsFactory;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mMakeProccess:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;

    .line 24
    return-void
.end method

.method public static getFactory()Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mFactory:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    if-nez v0, :cond_1

    .line 28
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mFactory:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mFactory:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mFactory:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 47
    .local v1, "product":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->makeProduct(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/AbsProduct;

    move-result-object v1

    .line 48
    .local v1, "product":Lcom/youku/laifeng/libcuteroom/model/data/AbsProduct;, "TT;"
    if-eqz v1, :cond_0

    .line 49
    instance-of v2, v1, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;

    if-eqz v2, :cond_0

    .line 50
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    move-object v0, v1

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;

    move-object v2, v0

    invoke-virtual {v2, p2}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;->parser(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-object v1

    .line 46
    .end local v1    # "product":Lcom/youku/laifeng/libcuteroom/model/data/AbsProduct;, "TT;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized make(Ljava/lang/Class;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;)V
    .locals 4
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "l":Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;, "Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;

    invoke-direct {v0, p0, p3}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;-><init>(Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mMakeProccess:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;

    .line 40
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->mMakeProccess:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
