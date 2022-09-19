.class public Lcom/mobisage/android/MobiSageTrackModule;
.super Lcom/mobisage/android/MobiSageLogicModule;
.source "MobiSageTrackModule.java"


# static fields
.field private static ourInstance:Lcom/mobisage/android/MobiSageTrackModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/mobisage/android/MobiSageTrackModule;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageTrackModule;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageTrackModule;->ourInstance:Lcom/mobisage/android/MobiSageTrackModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageLogicModule;-><init>()V

    .line 19
    new-instance v1, Lcom/mobisage/android/MobiSageTrackInitSlot;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackInitSlot;-><init>(Landroid/os/Handler;)V

    .line 20
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackInitSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackInitSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/mobisage/android/MobiSageTrackSystemSlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackInitSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackSystemSlot;-><init>(Landroid/os/Handler;)V

    .line 24
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackSystemSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackSystemSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lcom/mobisage/android/MobiSageTrackStreamSlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackSystemSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackStreamSlot;-><init>(Landroid/os/Handler;)V

    .line 28
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackStreamSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackStreamSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Lcom/mobisage/android/MobiSageTrackDeviceInfoSlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackStreamSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackDeviceInfoSlot;-><init>(Landroid/os/Handler;)V

    .line 33
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackDeviceInfoSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackDeviceInfoSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lcom/mobisage/android/MobiSageTrackSNSSlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackDeviceInfoSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackSNSSlot;-><init>(Landroid/os/Handler;)V

    .line 37
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackSNSSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackSNSSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/mobisage/android/MobiSageTrackVideoAdSlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackSNSSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackVideoAdSlot;-><init>(Landroid/os/Handler;)V

    .line 43
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackVideoAdSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackVideoAdSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lcom/mobisage/android/MobiSageTrackAppSlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackVideoAdSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackAppSlot;-><init>(Landroid/os/Handler;)V

    .line 49
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackAppSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackAppSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Lcom/mobisage/android/MobiSageTrackTemplateSlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackAppSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackTemplateSlot;-><init>(Landroid/os/Handler;)V

    .line 56
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackTemplateSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackTemplateSlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/mobisage/android/MobiSageTrackCPASlot;

    .end local v1    # "slot":Lcom/mobisage/android/MobiSageTrackTemplateSlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageTrackCPASlot;-><init>(Landroid/os/Handler;)V

    .line 61
    .local v1, "slot":Lcom/mobisage/android/MobiSageTrackCPASlot;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/mobisage/android/MobiSageTrackCPASlot;->messageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v2, p0, Lcom/mobisage/android/MobiSageTrackModule;->handler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 64
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v2}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/mobisage/android/MobiSageTrackModule;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/mobisage/android/MobiSageTrackModule;->ourInstance:Lcom/mobisage/android/MobiSageTrackModule;

    return-object v0
.end method
