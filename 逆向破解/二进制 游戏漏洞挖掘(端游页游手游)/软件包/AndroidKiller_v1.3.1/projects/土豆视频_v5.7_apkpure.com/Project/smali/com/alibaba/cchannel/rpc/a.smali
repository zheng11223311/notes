.class final Lcom/alibaba/cchannel/rpc/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/cchannel/session/plugin/SessionService;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/cchannel/rpc/ServiceRequest;

.field final synthetic d:Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;Lcom/alibaba/cchannel/session/plugin/SessionService;ZLcom/alibaba/cchannel/rpc/ServiceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/a;->d:Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;

    iput-object p2, p0, Lcom/alibaba/cchannel/rpc/a;->a:Lcom/alibaba/cchannel/session/plugin/SessionService;

    iput-boolean p3, p0, Lcom/alibaba/cchannel/rpc/a;->b:Z

    iput-object p4, p0, Lcom/alibaba/cchannel/rpc/a;->c:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/a;->a:Lcom/alibaba/cchannel/session/plugin/SessionService;

    iget-boolean v1, p0, Lcom/alibaba/cchannel/rpc/a;->b:Z

    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/a;->c:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    invoke-virtual {v2}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getSessionFilter()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/cchannel/session/plugin/SessionService;->getSid(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
