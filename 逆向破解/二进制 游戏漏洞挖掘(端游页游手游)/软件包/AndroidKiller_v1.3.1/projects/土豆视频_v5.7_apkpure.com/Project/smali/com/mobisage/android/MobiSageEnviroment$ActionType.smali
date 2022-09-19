.class Lcom/mobisage/android/MobiSageEnviroment$ActionType;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionType"
.end annotation


# static fields
.field public static final Action_ApkDownload:I = 0x2

.field public static final Action_ClickToCall:I = 0x3

.field public static final Action_SendSMS:I = 0x5

.field public static final Action_Unknown:I = 0x0

.field public static final Action_Webbrowser:I = 0x4

.field public static final Action_Webpage:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageEnviroment;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageEnviroment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mobisage/android/MobiSageEnviroment$ActionType;->this$0:Lcom/mobisage/android/MobiSageEnviroment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
