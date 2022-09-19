.class Lcom/mobisage/android/MobiSageEnviroment$MobiSageActionType;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobiSageActionType"
.end annotation


# static fields
.field public static final ACTION_OPEN_DIAL:I = 0x4

.field public static final ACTION_OPEN_DOWNLOAD:I = 0x2

.field public static final ACTION_OPEN_IN:I = 0x1

.field public static final ACTION_OPEN_OUT:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageEnviroment;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageEnviroment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mobisage/android/MobiSageEnviroment$MobiSageActionType;->this$0:Lcom/mobisage/android/MobiSageEnviroment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
