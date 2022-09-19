.class public Lcom/youku/vo/AdResult;
.super Ljava/lang/Object;
.source "AdResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/AdResult$AdHTML;
    }
.end annotation


# static fields
.field public static final SHOW_CLOSE_ICON:Ljava/lang/String; = "1"

.field public static final TYPE_HTML:Ljava/lang/String; = "html"

.field public static final TYPE_IMG:Ljava/lang/String; = "img"


# instance fields
.field public AT:Ljava/lang/String;

.field public CUF:Ljava/lang/String;

.field public HTML:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/AdResult$AdHTML;",
            ">;"
        }
    .end annotation
.end field

.field public IE:Ljava/lang/String;

.field public PID:Ljava/lang/String;

.field public SDKID:Ljava/lang/String;

.field public TX:Ljava/lang/String;

.field public error_code_api:Ljava/lang/String;

.field public is_pellucid:Ljava/lang/String;

.field public status_api:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method
