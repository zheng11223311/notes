.class public Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
.super Ljava/lang/Object;
.source "DataLoadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;


# instance fields
.field private SecretKey:Ljava/lang/String;

.field private mArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBigArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

.field private mCookies:Ljava/lang/String;

.field private mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

.field private mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

.field private mGroypId:Ljava/lang/String;

.field private mIsCancel:Z

.field private mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

.field private mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

.field private mToken:Ljava/lang/String;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "postArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "postBigArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mType:I

    .line 61
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 62
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 63
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 64
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    .line 65
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 66
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 115
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 116
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    .line 117
    iput p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mType:I

    .line 118
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 119
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    .line 120
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    const-string/jumbo v1, "v"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    const-string v1, "cl"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 125
    iput-object p6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    .line 126
    iput-object p7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    .line 127
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 128
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-static {p4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertMapToStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRequest(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p6, "cookie"    # Ljava/lang/String;
    .param p7, "groupId"    # Ljava/lang/String;
    .param p8, "groupListener"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;
    .param p9, "token"    # Ljava/lang/String;
    .param p10, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "postArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "postBigArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mType:I

    .line 61
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 62
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 63
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 64
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    .line 65
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 66
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 75
    iput-object p7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroypId:Ljava/lang/String;

    .line 76
    iput-object p8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    .line 77
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 78
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    .line 79
    iput p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mType:I

    .line 80
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 81
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    .line 82
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    const-string/jumbo v1, "v"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    const-string v1, "cl"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iput-object p6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    .line 87
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 88
    iput-object p9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    .line 89
    iput-object p10, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 91
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-static {p4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertMapToStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRequest(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p6, "cookie"    # Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "postArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "postBigArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mType:I

    .line 61
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 62
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 63
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 64
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    .line 65
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 66
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mIsCancel:Z

    .line 97
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 98
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    .line 99
    iput p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mType:I

    .line 100
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 101
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    .line 102
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    const-string/jumbo v1, "v"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    const-string v1, "cl"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iput-object p6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    .line 107
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 108
    iput-object p7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 111
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-static {p4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertMapToStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRequest(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private httpGet(Z)Ljava/lang/String;
    .locals 25
    .param p1, "flag"    # Z

    .prologue
    .line 405
    if-eqz p1, :cond_2

    .line 406
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getPlayClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    .line 410
    .local v8, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v21

    const-wide/16 v22, 0x3a98

    invoke-virtual/range {v21 .. v23}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->setTimeout(J)V

    .line 411
    const/16 v16, 0x0

    .line 412
    .local v16, "result":Ljava/lang/String;
    const-string v14, ""

    .line 415
    .local v14, "paramStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 419
    .local v20, "url":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 420
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 421
    .local v11, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    .line 422
    .local v17, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 423
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 424
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 425
    .local v12, "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "&"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v24, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 426
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 477
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v6

    .line 478
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v21, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v21, :cond_0

    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 479
    :cond_0
    const/16 v21, 0x2000

    const-string v22, "ERR_CLIENT_PROTOCOL_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    .end local v6    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_1
    :goto_2
    move-object/from16 v21, v16

    .line 487
    :goto_3
    return-object v21

    .line 408
    .end local v8    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v14    # "paramStr":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    .restart local v8    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_0

    .line 428
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "paramStr":Ljava/lang/String;
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v20    # "url":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 429
    const-string v21, "&"

    const-string v22, "?"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 430
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 432
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->sort(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v5, "Str1":Ljava/lang/String;
    :goto_4
    sget-object v21, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mUrl = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 438
    .local v15, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    .line 440
    .local v18, "ts":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getRandomStr()Ljava/lang/String;

    move-result-object v13

    .line 441
    .local v13, "nonce":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MAC id="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",ts="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",nonce="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",mac="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 442
    invoke-static/range {v22 .. v22}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 446
    .end local v13    # "nonce":Ljava/lang/String;
    .end local v18    # "ts":Ljava/lang/String;
    .local v4, "Authorization":Ljava/lang/String;
    :goto_5
    sget-object v21, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Authorization = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v21, "Authorization"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v21

    const-string v22, "id"

    invoke-virtual/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getuserDataInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 449
    .local v19, "uid":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 450
    const-string v19, "-1"

    .line 452
    :cond_5
    const-string v21, "info"

    invoke-static/range {v19 .. v19}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v21, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "info = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v19 .. v19}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 455
    sget-object v21, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mCookies = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v21, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v8, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 461
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_6
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 462
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 463
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const-string v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-static {v7, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 464
    sget-object v21, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setBody(Ljava/lang/String;)V

    .line 466
    if-eqz v7, :cond_6

    .line 467
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 469
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v21, v0

    const/16 v22, 0xc8

    invoke-virtual/range {v21 .. v22}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRespStatusCode(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 471
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const-string v22, "ParseException"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    .line 472
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 434
    .end local v4    # "Authorization":Ljava/lang/String;
    .end local v5    # "Str1":Ljava/lang/String;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v19    # "uid":Ljava/lang/String;
    :cond_7
    const-string v5, ""

    .restart local v5    # "Str1":Ljava/lang/String;
    goto/16 :goto_4

    .line 444
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    :cond_8
    const-string v4, ""

    .restart local v4    # "Authorization":Ljava/lang/String;
    goto/16 :goto_5

    .line 459
    .restart local v19    # "uid":Ljava/lang/String;
    :cond_9
    invoke-virtual {v8, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .restart local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    goto/16 :goto_6

    .line 475
    :cond_a
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    const-string v23, "UTF-8"

    invoke-static/range {v22 .. v23}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 480
    .end local v4    # "Authorization":Ljava/lang/String;
    .end local v5    # "Str1":Ljava/lang/String;
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v19    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 481
    .local v6, "e":Ljava/io/IOException;
    sget-boolean v21, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v21, :cond_b

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 482
    :cond_b
    const/16 v21, 0x2001

    const-string v22, "ERR_IO_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 483
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 484
    .local v6, "e":Lorg/apache/http/ParseException;
    sget-boolean v21, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v21, :cond_c

    invoke-virtual {v6}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 485
    :cond_c
    const/16 v21, 0x2003

    const-string v22, "ERR_PARSE_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_2
.end method

.method private httpPost(Z)Ljava/lang/String;
    .locals 26
    .param p1, "flag"    # Z

    .prologue
    .line 302
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    .line 303
    .local v8, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v22

    const-wide/16 v24, 0x3a98

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->setTimeout(J)V

    .line 304
    const/16 v17, 0x0

    .line 305
    .local v17, "result":Ljava/lang/String;
    const-string v15, ""

    .line 308
    .local v15, "paramStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 312
    .local v21, "url":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 313
    .local v9, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mArgs = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 315
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 316
    .local v12, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mArgs:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    .line 317
    .local v18, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 318
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 319
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 320
    .local v13, "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v25, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 322
    goto :goto_0

    .line 323
    .end local v13    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 324
    const-string v22, "&"

    const-string v23, "?"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 325
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 327
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->sort(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v5

    .line 331
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v5, "Str1":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_6

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 333
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v16, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBigArgs:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    .line 335
    .restart local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 336
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 337
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 338
    .restart local v13    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v24, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    .line 385
    .end local v5    # "Str1":Ljava/lang/String;
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v6

    .line 386
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_2

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 387
    :cond_2
    const/16 v22, 0x2004

    const-string v23, "ERR_UNSUPPORTED_ENCODING_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_3
    move-object/from16 v22, v17

    .line 400
    :goto_4
    return-object v22

    .line 329
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    :try_start_1
    const-string v5, ""

    .restart local v5    # "Str1":Ljava/lang/String;
    goto :goto_1

    .line 340
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v16    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    new-instance v22, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 343
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v16    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mUrl = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Str1 = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v22, Ljava/net/URI;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 348
    .local v19, "ts":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getRandomStr()Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "nonce":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MAC id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mToken:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",ts="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",nonce="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",mac="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->SecretKey:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 350
    invoke-static/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    .end local v14    # "nonce":Ljava/lang/String;
    .end local v19    # "ts":Ljava/lang/String;
    .local v4, "Authorization":Ljava/lang/String;
    :goto_5
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Authorization = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v22, "Authorization"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v22

    const-string v23, "id"

    invoke-virtual/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getuserDataInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 357
    .local v20, "uid":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 358
    const-string v20, "-1"

    .line 360
    :cond_7
    const-string v22, "info"

    invoke-static/range {v20 .. v20}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "info = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 363
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mCookies = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v22, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mCookies:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 369
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_6
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 370
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 371
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 372
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "result = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setBody(Ljava/lang/String;)V

    .line 374
    if-eqz v7, :cond_8

    .line 375
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 377
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v22, v0

    const/16 v23, 0xc8

    invoke-virtual/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRespStatusCode(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 379
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const-string v23, "ParseException"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    .line 380
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 352
    .end local v4    # "Authorization":Ljava/lang/String;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v20    # "uid":Ljava/lang/String;
    :cond_9
    const-string v4, ""

    .restart local v4    # "Authorization":Ljava/lang/String;
    goto/16 :goto_5

    .line 367
    .restart local v20    # "uid":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .restart local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    goto/16 :goto_6

    .line 383
    :cond_b
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    const-string v24, "UTF-8"

    invoke-static/range {v23 .. v24}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    .line 388
    .end local v4    # "Authorization":Ljava/lang/String;
    .end local v5    # "Str1":Ljava/lang/String;
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v20    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 389
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_c

    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 390
    :cond_c
    const/16 v22, 0x2000

    const-string v23, "ERR_CLIENT_PROTOCOL_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 391
    .end local v6    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v6

    .line 392
    .local v6, "e":Ljava/io/IOException;
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_d

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 393
    :cond_d
    const/16 v22, 0x2001

    const-string v23, "ERR_IO_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 394
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 395
    .local v6, "e":Lorg/apache/http/ParseException;
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_e

    invoke-virtual {v6}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 396
    :cond_e
    const/16 v22, 0x2003

    const-string v23, "ERR_PARSE_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 397
    .end local v6    # "e":Lorg/apache/http/ParseException;
    :catch_4
    move-exception v6

    .line 398
    .local v6, "e":Ljava/net/URISyntaxException;
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_3

    invoke-virtual {v6}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private postErr(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v1, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRespStatusCode(I)V

    .line 492
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v1, p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setMessage(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    if-eqz v1, :cond_1

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-interface {v1, v2, p1, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;->onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-interface {v1, v2, p1, v3}, Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;->onErrorDataLoaderListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V

    goto :goto_0
.end method

.method private sort(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "arg":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 291
    .local v2, "tmp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v2    # "tmp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mIsCancel:Z

    .line 157
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 161
    const/4 v10, 0x0

    .line 192
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    if-eqz v10, :cond_4

    :try_start_1
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 220
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .local v12, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v0, "response"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 222
    .local v11, "root":Lorg/json/JSONObject;
    if-eqz v11, :cond_b

    .line 223
    const-string v0, "code"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setExtraData(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "data"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setParserData(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_ENTER_ROOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->builderRoomInfo(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_SIGN:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_GET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->updateGiftConfig(Ljava/lang/String;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_SEND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const-string v0, "data"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 235
    .local v6, "data":Lorg/json/JSONObject;
    const-string v0, "leftStars"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 236
    .local v9, "leftStar":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    move-result-object v0

    const-string/jumbo v1, "starAvail"

    invoke-virtual {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->updateStarInfoByKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v9    # "leftStar":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_GET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->updateStarInfo(Ljava/lang/String;)V

    .line 261
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mIsCancel:Z

    if-eqz v0, :cond_c

    .line 262
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroypId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;->cancel(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 283
    .end local v11    # "root":Lorg/json/JSONObject;
    .end local v12    # "tmp":Lorg/json/JSONObject;
    :cond_4
    :goto_2
    iput-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 284
    iput-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 285
    iput-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    .line 286
    :goto_3
    return-void

    .line 194
    :pswitch_0
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->httpGet(Z)Ljava/lang/String;

    move-result-object v10

    .line 195
    goto/16 :goto_0

    .line 197
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->httpPost(Z)Ljava/lang/String;

    move-result-object v10

    .line 198
    goto/16 :goto_0

    .line 200
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->httpPost(Z)Ljava/lang/String;

    move-result-object v10

    .line 201
    goto/16 :goto_0

    .line 203
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->httpGet(Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 207
    :catch_0
    move-exception v7

    .line 208
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 210
    const-string v0, "important crash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http crash,url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroypId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;->finish(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V

    .line 214
    :cond_7
    iput-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    goto :goto_3

    .line 241
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "root":Lorg/json/JSONObject;
    .restart local v12    # "tmp":Lorg/json/JSONObject;
    :cond_8
    :try_start_3
    const-string v0, "code"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERSION_UPGRAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v8

    .line 243
    .local v8, "isforeground":Z
    if-eqz v8, :cond_3

    .line 244
    sget-boolean v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->isVersionUpgrade:Z

    if-nez v0, :cond_3

    .line 245
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->sendVersionUpgradeBroadCast(Landroid/content/Context;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 277
    .end local v8    # "isforeground":Z
    .end local v11    # "root":Lorg/json/JSONObject;
    .end local v12    # "tmp":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    .line 278
    .local v7, "e":Landroid/os/RemoteException;
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 249
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v11    # "root":Lorg/json/JSONObject;
    .restart local v12    # "tmp":Lorg/json/JSONObject;
    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "code"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setExtraData(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "message"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setMessage(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVALID_TOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 252
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->clearUserInfo()V

    .line 253
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->sendTokenValidBroadCast(Landroid/content/Context;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 279
    .end local v11    # "root":Lorg/json/JSONObject;
    .end local v12    # "tmp":Lorg/json/JSONObject;
    :catch_2
    move-exception v7

    .line 280
    .local v7, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_rest_api_resp_parser_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 254
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v11    # "root":Lorg/json/JSONObject;
    .restart local v12    # "tmp":Lorg/json/JSONObject;
    :cond_a
    :try_start_5
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGIN_INNEED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->clearUserInfo()V

    goto/16 :goto_1

    .line 259
    :cond_b
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_rest_api_resp_parser_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    if-eqz v0, :cond_d

    .line 267
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mGroypId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;->finish(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;)V

    .line 269
    :cond_d
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    if-eqz v0, :cond_e

    .line 270
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-interface {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;->onDataReciveDirectListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V

    .line 272
    :cond_e
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mBroadListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-interface {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;->onDataLoaderComplitionListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 192
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
