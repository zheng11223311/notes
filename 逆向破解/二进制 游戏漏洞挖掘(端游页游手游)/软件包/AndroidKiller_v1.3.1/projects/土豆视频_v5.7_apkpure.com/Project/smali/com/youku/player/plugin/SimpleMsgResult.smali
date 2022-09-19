.class public Lcom/youku/player/plugin/SimpleMsgResult;
.super Ljava/lang/Object;
.source "SimpleMsgResult.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private succ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/player/plugin/SimpleMsgResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSucc()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/youku/player/plugin/SimpleMsgResult;->succ:Z

    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVar"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/player/plugin/SimpleMsgResult;->msg:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSucc(Z)V
    .locals 0
    .param p1, "newVar"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/youku/player/plugin/SimpleMsgResult;->succ:Z

    .line 36
    return-void
.end method
