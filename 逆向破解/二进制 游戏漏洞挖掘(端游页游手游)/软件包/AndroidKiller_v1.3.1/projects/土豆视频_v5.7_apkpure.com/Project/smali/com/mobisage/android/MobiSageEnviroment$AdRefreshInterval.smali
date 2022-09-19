.class public Lcom/mobisage/android/MobiSageEnviroment$AdRefreshInterval;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdRefreshInterval"
.end annotation


# static fields
.field public static final Ad_No_Refresh:I = 0x0

.field public static final Ad_Refresh_30:I = 0x4

.field public static final Ad_Refresh_60:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageEnviroment;


# direct methods
.method public constructor <init>(Lcom/mobisage/android/MobiSageEnviroment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mobisage/android/MobiSageEnviroment$AdRefreshInterval;->this$0:Lcom/mobisage/android/MobiSageEnviroment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
