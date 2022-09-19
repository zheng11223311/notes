.class public abstract Lcom/taobao/android/dexposed/XC_MethodKeepHook;
.super Lcom/taobao/android/dexposed/XC_MethodHook;
.source "XC_MethodKeepHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/taobao/android/dexposed/XC_MethodHook;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/XC_MethodHook;-><init>(I)V

    .line 16
    return-void
.end method
