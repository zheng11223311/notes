.class Lcom/mobisage/android/MobiSageEnviroment$EventType;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventType"
.end annotation


# static fields
.field public static final Event_Button_Click:I = 0x9

.field public static final Event_Call:I = 0x5

.field public static final Event_Click:I = 0x2

.field public static final Event_ClickInWeb:I = 0x8

.field public static final Event_Default:I = 0x0

.field public static final Event_Impression:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageEnviroment;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageEnviroment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mobisage/android/MobiSageEnviroment$EventType;->this$0:Lcom/mobisage/android/MobiSageEnviroment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
