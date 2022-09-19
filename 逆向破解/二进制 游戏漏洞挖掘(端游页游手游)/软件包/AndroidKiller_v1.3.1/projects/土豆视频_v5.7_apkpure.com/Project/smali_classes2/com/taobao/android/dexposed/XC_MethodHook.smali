.class public abstract Lcom/taobao/android/dexposed/XC_MethodHook;
.super Lcom/taobao/android/dexposed/callbacks/XCallback;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;,
        Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/android/dexposed/callbacks/XCallback;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/callbacks/XCallback;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 0
    .param p1, "param"    # Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method protected beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 0
    .param p1, "param"    # Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method
