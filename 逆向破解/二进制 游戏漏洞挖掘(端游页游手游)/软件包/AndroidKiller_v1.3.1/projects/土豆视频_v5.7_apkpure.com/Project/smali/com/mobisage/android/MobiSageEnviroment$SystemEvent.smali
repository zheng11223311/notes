.class public Lcom/mobisage/android/MobiSageEnviroment$SystemEvent;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemEvent"
.end annotation


# static fields
.field public static final App_Launching:Ljava/lang/String; = "In"

.field public static final App_Terminating:Ljava/lang/String; = "Out"


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageEnviroment;


# direct methods
.method public constructor <init>(Lcom/mobisage/android/MobiSageEnviroment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mobisage/android/MobiSageEnviroment$SystemEvent;->this$0:Lcom/mobisage/android/MobiSageEnviroment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
