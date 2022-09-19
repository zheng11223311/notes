.class public Lcom/taobao/hotpatch/util/PatchResult;
.super Lcom/taobao/hotpatch/patch/PatchResult;
.source "PatchResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "code"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "code"    # I
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 13
    return-void
.end method
