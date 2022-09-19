.class public Lcom/mobisage/android/MobiSageEnviroment$NetworkState;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkState"
.end annotation


# static fields
.field public static final NS_NA:I = 0x0

.field public static final SECOND_G:I = 0x2

.field public static final THIRD_G:I = 0x3

.field public static final WIFI:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageEnviroment;


# direct methods
.method public constructor <init>(Lcom/mobisage/android/MobiSageEnviroment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mobisage/android/MobiSageEnviroment$NetworkState;->this$0:Lcom/mobisage/android/MobiSageEnviroment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
