.class public abstract Lcom/taobao/android/dexposed/XC_MethodKeepReplacement;
.super Lcom/taobao/android/dexposed/XC_MethodReplacement;
.source "XC_MethodKeepReplacement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/android/dexposed/XC_MethodReplacement;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/XC_MethodReplacement;-><init>(I)V

    .line 14
    return-void
.end method
