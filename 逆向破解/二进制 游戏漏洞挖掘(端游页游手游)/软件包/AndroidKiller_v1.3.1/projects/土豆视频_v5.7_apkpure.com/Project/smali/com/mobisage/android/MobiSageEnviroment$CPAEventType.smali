.class Lcom/mobisage/android/MobiSageEnviroment$CPAEventType;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CPAEventType"
.end annotation


# static fields
.field public static final Event_Activation:Ljava/lang/String; = "3"

.field public static final Event_DownloadFinish:Ljava/lang/String; = "1"

.field public static final Event_InstallAble:Ljava/lang/String; = "21"

.field public static final Event_InstallFinish:Ljava/lang/String; = "2"

.field public static final Event_StartDownload:Ljava/lang/String; = "11"


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageEnviroment;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageEnviroment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mobisage/android/MobiSageEnviroment$CPAEventType;->this$0:Lcom/mobisage/android/MobiSageEnviroment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
