.class Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dexposed/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalHookInfo"
.end annotation


# instance fields
.field final callbacks:Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->callbacks:Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    .line 429
    iput-object p2, p0, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    .line 430
    iput-object p3, p0, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    .line 431
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;Lcom/taobao/android/dexposed/XposedBridge$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;
    .param p2, "x1"    # [Ljava/lang/Class;
    .param p3, "x2"    # Ljava/lang/Class;
    .param p4, "x3"    # Lcom/taobao/android/dexposed/XposedBridge$1;

    .prologue
    .line 422
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;-><init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method
