.class public abstract Lio/rong/imlib/NativeObject$ReceiveMessageListener;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReceiveMessageListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNewMessage()Lio/rong/imlib/NativeObject$Message;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lio/rong/imlib/NativeObject$Message;

    invoke-direct {v0}, Lio/rong/imlib/NativeObject$Message;-><init>()V

    return-object v0
.end method

.method public abstract onReceived(Lio/rong/imlib/NativeObject$Message;I)V
.end method
