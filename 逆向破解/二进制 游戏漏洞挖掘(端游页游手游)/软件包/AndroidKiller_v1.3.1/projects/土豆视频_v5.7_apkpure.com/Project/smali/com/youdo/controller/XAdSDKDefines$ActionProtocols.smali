.class public Lcom/youdo/controller/XAdSDKDefines$ActionProtocols;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/XAdSDKDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionProtocols"
.end annotation


# static fields
.field public static final MAIL_TO:Ljava/lang/String; = "mailto:"

.field public static final MAKE_CALL:Ljava/lang/String; = "tel:"

.field public static final REQUEST:Ljava/lang/String; = "mraid://"


# instance fields
.field final synthetic this$0:Lcom/youdo/controller/XAdSDKDefines;


# direct methods
.method public constructor <init>(Lcom/youdo/controller/XAdSDKDefines;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/XAdSDKDefines$ActionProtocols;->this$0:Lcom/youdo/controller/XAdSDKDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
