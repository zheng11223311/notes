.class Lcom/mobisage/android/MobiSageApkMessage;
.super Lcom/mobisage/android/MobiSageResMessage;
.source "MobiSageApkMessage.java"


# instance fields
.field public apkName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageResMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public createMessageRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/mobisage/android/MobiSageApkRunnable;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageApkRunnable;-><init>(Lcom/mobisage/android/MobiSageResMessage;)V

    return-object v0
.end method
