.class final Lcom/alibaba/cchannel/session/plugin/impl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/cchannel/CloudChannelInitializeProvider;


# instance fields
.field final synthetic a:Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/cchannel/session/plugin/impl/a;->a:Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(ZLjava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/alibaba/cchannel/session/plugin/SessionContext;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v1, Lcom/alibaba/sdk/android/session/SessionService;

    invoke-interface {v0, v1, p2}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/session/SessionService;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/session/SessionService;->refreshSId()Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/alibaba/sdk/android/model/Result;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/sdk/android/session/SessionService;->getSId()Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    goto :goto_0
.end method
