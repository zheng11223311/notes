.class public Lcom/youku/gamecenter/DelayNotifyHandler;
.super Landroid/os/Handler;
.source "DelayNotifyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/youku/gamecenter/DelayNotifyHandler;


# instance fields
.field private listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-direct {v0}, Lcom/youku/gamecenter/DelayNotifyHandler;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/DelayNotifyHandler;->sInstance:Lcom/youku/gamecenter/DelayNotifyHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->messages:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->listeners:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method private containsMessage(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->messages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/youku/gamecenter/DelayNotifyHandler;->sInstance:Lcom/youku/gamecenter/DelayNotifyHandler;

    return-object v0
.end method

.method public static sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V
    .locals 2
    .param p0, "handler"    # Lcom/youku/gamecenter/DelayNotifyHandler;
    .param p1, "hashCode"    # I

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 75
    .local v0, "message":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendRefreshMessage(Landroid/os/Message;)V

    .line 77
    return-void
.end method


# virtual methods
.method public addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V
    .locals 2
    .param p1, "hashCode"    # I
    .param p2, "listener"    # Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->listeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    .local v0, "key":I
    iget-object v1, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->messages:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->listeners:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->listeners:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;->onDelayNotify()V

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 2
    .param p1, "hashCode"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->listeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public sendRefreshMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    .local v0, "key":I
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/DelayNotifyHandler;->containsMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/DelayNotifyHandler;->messages:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-wide/16 v2, 0x320

    invoke-virtual {p0, p1, v2, v3}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
