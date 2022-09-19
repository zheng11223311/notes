.class public interface abstract Lio/rong/imlib/NativeObject$ProgressCallback;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCallback"
.end annotation


# virtual methods
.method public abstract OnComplete(Ljava/lang/String;)V
.end method

.method public abstract OnError(ILjava/lang/String;)V
.end method

.method public abstract OnProgress(I)V
.end method
