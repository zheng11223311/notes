.class public Lcom/ultrapower/mcs/engine/internal/UMCSInternal;
.super Ljava/lang/Object;
.source "UMCSInternal.java"


# static fields
.field public static final FX_AVLIB_VIDEO_PROTECTION_FCE:I = 0x2

.field public static final FX_AVLIB_VIDEO_PROTECTION_NACK:I = 0x1

.field public static final FX_AVLIB_VIDEO_PROTECTION_NACK_FCE:I = 0x3

.field public static final FX_AVLIB_VIDEO_PROTECTION_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "umcs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native GetECEnable()I
.end method

.method public native GetHighPassFilterEnable()I
.end method

.method public native GetLocalAudioInfo(Lcom/ultrapower/mcs/engine/internal/SendAudioInfo;)I
.end method

.method public native GetLocalVideoInfo(Lcom/ultrapower/mcs/engine/internal/SendVideoInfo;)I
.end method

.method public native GetNSEnable()I
.end method

.method public native GetRemoteAudioInfo(Lcom/ultrapower/mcs/engine/internal/ReceiveAudioInfo;)I
.end method

.method public native GetRemoteVideoInfo(Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;)I
.end method

.method public native SetECEnable(II)I
.end method

.method public native SetHighPassFilterEnable(I)I
.end method

.method public native SetNSEnable(II)I
.end method

.method public native SetVADStatus(IIII)I
.end method

.method public native SetVideoProtectionMethod(I)I
.end method
