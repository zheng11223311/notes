.class Lcom/comscore/streaming/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSense;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSense;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/b;->a:Lcom/comscore/streaming/StreamSense;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/b;->a:Lcom/comscore/streaming/StreamSense;

    invoke-virtual {v0}, Lcom/comscore/streaming/StreamSense;->a()V

    return-void
.end method
