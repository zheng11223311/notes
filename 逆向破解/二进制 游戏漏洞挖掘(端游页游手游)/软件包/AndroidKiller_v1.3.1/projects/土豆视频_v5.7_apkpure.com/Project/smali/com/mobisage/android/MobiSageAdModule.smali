.class Lcom/mobisage/android/MobiSageAdModule;
.super Lcom/mobisage/android/MobiSageLogicModule;
.source "MobiSageAdModule.java"


# static fields
.field private static final ourInstance:Lcom/mobisage/android/MobiSageAdModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/mobisage/android/MobiSageAdModule;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAdModule;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageAdModule;->ourInstance:Lcom/mobisage/android/MobiSageAdModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageLogicModule;-><init>()V

    .line 13
    new-instance v0, Lcom/mobisage/android/MobiSageAdReqSlot;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/mobisage/android/MobiSageAdReqSlot;-><init>(Landroid/os/Handler;)V

    .line 14
    .local v0, "slot":Lcom/mobisage/android/MobiSageAdReqSlot;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/mobisage/android/MobiSageAdReqSlot;->messageCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/mobisage/android/MobiSageAdResSlot;

    .end local v0    # "slot":Lcom/mobisage/android/MobiSageAdReqSlot;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/mobisage/android/MobiSageAdResSlot;-><init>(Landroid/os/Handler;)V

    .line 18
    .local v0, "slot":Lcom/mobisage/android/MobiSageAdResSlot;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/mobisage/android/MobiSageAdResSlot;->messageCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/mobisage/android/MobiSageAdLPGSlot;

    .end local v0    # "slot":Lcom/mobisage/android/MobiSageAdResSlot;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/mobisage/android/MobiSageAdLPGSlot;-><init>(Landroid/os/Handler;)V

    .line 22
    .local v0, "slot":Lcom/mobisage/android/MobiSageAdLPGSlot;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/mobisage/android/MobiSageAdLPGSlot;->messageCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/mobisage/android/MobiSageAdLpgResSlot;

    .end local v0    # "slot":Lcom/mobisage/android/MobiSageAdLPGSlot;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/mobisage/android/MobiSageAdLpgResSlot;-><init>(Landroid/os/Handler;)V

    .line 26
    .local v0, "slot":Lcom/mobisage/android/MobiSageAdLpgResSlot;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdModule;->slotMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/mobisage/android/MobiSageAdLpgResSlot;->messageCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/mobisage/android/MobiSageAdModule;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/mobisage/android/MobiSageAdModule;->ourInstance:Lcom/mobisage/android/MobiSageAdModule;

    return-object v0
.end method
