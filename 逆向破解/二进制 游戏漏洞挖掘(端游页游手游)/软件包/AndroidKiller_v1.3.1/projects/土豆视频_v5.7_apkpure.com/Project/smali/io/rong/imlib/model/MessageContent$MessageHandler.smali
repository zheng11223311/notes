.class public abstract Lio/rong/imlib/model/MessageContent$MessageHandler;
.super Ljava/lang/Object;
.source "MessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessageHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/MessageContent$MessageHandler$DefaultMessageHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/rong/imlib/model/MessageContent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    .local p0, "this":Lio/rong/imlib/model/MessageContent$MessageHandler;, "Lio/rong/imlib/model/MessageContent$MessageHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lio/rong/imlib/model/MessageContent$MessageHandler;->context:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public abstract afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lio/rong/imlib/model/MessageContent$MessageHandler;, "Lio/rong/imlib/model/MessageContent$MessageHandler<TT;>;"
    .local p2, "messageContent":Lio/rong/imlib/model/MessageContent;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/rong/imlib/model/MessageContent$MessageHandler;->afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V

    .line 97
    return-void
.end method

.method public encodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lio/rong/imlib/model/MessageContent$MessageHandler;, "Lio/rong/imlib/model/MessageContent$MessageHandler<TT;>;"
    .local p2, "messageContent":Lio/rong/imlib/model/MessageContent;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/rong/imlib/model/MessageContent$MessageHandler;->beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z

    move-result v0

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lio/rong/imlib/model/MessageContent$MessageHandler;, "Lio/rong/imlib/model/MessageContent$MessageHandler<TT;>;"
    iget-object v0, p0, Lio/rong/imlib/model/MessageContent$MessageHandler;->context:Landroid/content/Context;

    return-object v0
.end method
