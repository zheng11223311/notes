.class public abstract Lcom/tudou/service/attention/AttentionManager;
.super Ljava/lang/Object;
.source "AttentionManager.java"

# interfaces
.implements Lcom/tudou/service/attention/IAttention;


# static fields
.field private static instance:Lcom/tudou/service/attention/IAttention;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/tudou/service/attention/IAttention;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/tudou/service/attention/AttentionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/service/attention/AttentionManager;->instance:Lcom/tudou/service/attention/IAttention;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/tudou/service/attention/AttentionManagerImpl;

    invoke-direct {v0}, Lcom/tudou/service/attention/AttentionManagerImpl;-><init>()V

    sput-object v0, Lcom/tudou/service/attention/AttentionManager;->instance:Lcom/tudou/service/attention/IAttention;

    .line 16
    :cond_0
    sget-object v0, Lcom/tudou/service/attention/AttentionManager;->instance:Lcom/tudou/service/attention/IAttention;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
