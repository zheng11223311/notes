.class public Lio/rong/push/PushProtocalStack$MessageOutputStream;
.super Ljava/lang/Object;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOutputStream"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$MessageOutputStream;->out:Ljava/io/OutputStream;

    .line 717
    return-void
.end method


# virtual methods
.method public writeMessage(Lio/rong/push/PushProtocalStack$Message;)V
    .locals 1
    .param p1, "msg"    # Lio/rong/push/PushProtocalStack$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$MessageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lio/rong/push/PushProtocalStack$Message;->write(Ljava/io/OutputStream;)V

    .line 721
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$MessageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 722
    return-void
.end method
