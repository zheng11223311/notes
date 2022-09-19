.class public interface abstract Lcom/youku/service/login/ILogin$ICallBack;
.super Ljava/lang/Object;
.source "ILogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/login/ILogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallBack"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;I)V
.end method

.method public abstract onSuccess()V
.end method
