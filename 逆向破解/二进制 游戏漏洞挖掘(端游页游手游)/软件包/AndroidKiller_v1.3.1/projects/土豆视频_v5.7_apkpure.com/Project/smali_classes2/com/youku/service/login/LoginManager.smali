.class public abstract Lcom/youku/service/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/youku/service/login/ILogin;


# static fields
.field private static instance:Lcom/youku/service/login/ILogin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/youku/service/login/ILogin;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/youku/service/login/LoginManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/youku/service/login/LoginManagerImpl;

    invoke-direct {v0}, Lcom/youku/service/login/LoginManagerImpl;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
