.class public Lcn/mmachina/JniClient;
.super Ljava/lang/Object;
.source "JniClient.java"


# static fields
.field public static version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput v0, Lcn/mmachina/JniClient;->version:I

    .line 10
    const-string v0, "MMANDKSignature"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native MDString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method
