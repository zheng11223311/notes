.class public abstract Lcom/youku/service/device/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Lcom/youku/service/device/IDevice;


# static fields
.field private static instance:Lcom/youku/service/device/DeviceManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/service/device/DeviceManager;->instance:Lcom/youku/service/device/DeviceManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/youku/service/device/DeviceManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 26
    const-class v1, Lcom/youku/service/device/DeviceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/service/device/DeviceManager;->instance:Lcom/youku/service/device/DeviceManagerImpl;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/youku/service/device/DeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/youku/service/device/DeviceManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/service/device/DeviceManager;->instance:Lcom/youku/service/device/DeviceManagerImpl;

    .line 29
    :cond_0
    sget-object v0, Lcom/youku/service/device/DeviceManager;->instance:Lcom/youku/service/device/DeviceManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
