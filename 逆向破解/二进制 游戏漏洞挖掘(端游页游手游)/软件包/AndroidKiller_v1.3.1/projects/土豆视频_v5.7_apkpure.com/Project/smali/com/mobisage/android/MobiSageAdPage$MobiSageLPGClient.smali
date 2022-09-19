.class Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;
.super Landroid/webkit/WebViewClient;
.source "MobiSageAdPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobiSageLPGClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdPage;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdPage;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdPage;Lcom/mobisage/android/MobiSageAdPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdPage;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdPage$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;-><init>(Lcom/mobisage/android/MobiSageAdPage;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 29
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 70
    .local v22, "tempUri":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, "scheme":Ljava/lang/String;
    const-string v26, "http"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    const-string v26, "https"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 73
    :cond_0
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .local v20, "temp":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, "path":Ljava/lang/String;
    const-string v26, "."

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "extName":Ljava/lang/String;
    const-string v26, "apk"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 92
    .local v17, "sdCard":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_1

    .line 93
    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-string v27, "Can\'t find sdcard!"

    const/16 v28, 0x5

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 96
    .local v24, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    .end local v24    # "toast":Landroid/widget/Toast;
    :goto_0
    const/16 v26, 0x1

    .line 365
    .end local v11    # "extName":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "scheme":Ljava/lang/String;
    .end local v17    # "sdCard":Ljava/io/File;
    .end local v20    # "temp":Ljava/net/URL;
    .end local v22    # "tempUri":Landroid/net/Uri;
    :goto_1
    return v26

    .line 99
    .restart local v11    # "extName":Ljava/lang/String;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "scheme":Ljava/lang/String;
    .restart local v17    # "sdCard":Ljava/io/File;
    .restart local v20    # "temp":Ljava/net/URL;
    .restart local v22    # "tempUri":Landroid/net/Uri;
    :cond_1
    const/16 v21, 0x0

    .line 101
    .local v21, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v21, Ljava/io/File;

    .end local v21    # "tempFile":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    .restart local v21    # "tempFile":Ljava/io/File;
    :goto_2
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 108
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .local v18, "target":Ljava/io/File;
    const/16 v19, 0x0

    .line 111
    .local v19, "targetPath":Ljava/lang/String;
    :try_start_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v19

    .line 119
    :goto_3
    :try_start_4
    new-instance v21, Ljava/io/File;

    .end local v21    # "tempFile":Ljava/io/File;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v21    # "tempFile":Ljava/io/File;
    sget-object v26, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 121
    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-string/jumbo v27, "\u7a0b\u5e8f\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u65e0\u9700\u91cd\u590d\u4e0b\u8f7d\uff0c\u8bf7\u7b49\u5f85..."

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    .line 124
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 103
    .end local v18    # "target":Ljava/io/File;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v21    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v10

    .line 104
    .local v10, "e":Ljava/lang/NoSuchFieldError;
    new-instance v21, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/Download/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v21    # "tempFile":Ljava/io/File;
    goto/16 :goto_2

    .line 114
    .end local v10    # "e":Ljava/lang/NoSuchFieldError;
    .restart local v18    # "target":Ljava/io/File;
    .restart local v19    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 115
    .restart local v10    # "e":Ljava/lang/NoSuchFieldError;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/Download/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 125
    .end local v10    # "e":Ljava/lang/NoSuchFieldError;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 126
    move-object/from16 v4, v19

    .line 127
    .local v4, "apkPath":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 130
    .local v9, "downdialog":Landroid/app/AlertDialog;
    const-string/jumbo v26, "\u63d0\u793a"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    const-string/jumbo v26, "\u8f6f\u4ef6\u5df2\u7ecf\u4e0b\u8f7d\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 133
    const/16 v26, -0x1

    const-string/jumbo v27, "\u662f"

    new-instance v28, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$1;-><init>(Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;Ljava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    const/16 v26, -0x2

    const-string/jumbo v27, "\u5426"

    new-instance v28, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$2;-><init>(Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;Landroid/app/AlertDialog;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 362
    .end local v4    # "apkPath":Ljava/lang/String;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "downdialog":Landroid/app/AlertDialog;
    .end local v11    # "extName":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "scheme":Ljava/lang/String;
    .end local v17    # "sdCard":Ljava/io/File;
    .end local v18    # "target":Ljava/io/File;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v20    # "temp":Ljava/net/URL;
    .end local v21    # "tempFile":Ljava/io/File;
    .end local v22    # "tempUri":Landroid/net/Uri;
    :catch_2
    move-exception v10

    .line 363
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v26

    goto/16 :goto_1

    .line 166
    .restart local v11    # "extName":Ljava/lang/String;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "scheme":Ljava/lang/String;
    .restart local v17    # "sdCard":Ljava/io/File;
    .restart local v18    # "target":Ljava/io/File;
    .restart local v19    # "targetPath":Ljava/lang/String;
    .restart local v20    # "temp":Ljava/net/URL;
    .restart local v21    # "tempFile":Ljava/io/File;
    .restart local v22    # "tempUri":Landroid/net/Uri;
    :cond_4
    :try_start_5
    new-instance v13, Landroid/content/Intent;

    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-class v27, Lcom/mobisage/android/MobiSageApkService;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v13, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v26, "action"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v26, "lpg"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v26, "name"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v26, "ExtraData"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 175
    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 180
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v17    # "sdCard":Ljava/io/File;
    .end local v18    # "target":Ljava/io/File;
    .end local v19    # "targetPath":Ljava/lang/String;
    .end local v21    # "tempFile":Ljava/io/File;
    :cond_5
    const-string v26, "3gp"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "mp3"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "mp4"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "mpeg"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string/jumbo v26, "wav"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 183
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/mobisage/android/MobiSageHtmlUtility;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 184
    .local v25, "type":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 188
    :try_start_6
    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    if-eqz v26, :cond_3

    .line 189
    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 191
    :catch_3
    move-exception v26

    goto/16 :goto_4

    .line 195
    .end local v11    # "extName":Ljava/lang/String;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "path":Ljava/lang/String;
    .end local v20    # "temp":Ljava/net/URL;
    .end local v25    # "type":Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string/jumbo v26, "tel"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 205
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v26

    const-string v27, "calltype"

    invoke-virtual/range {v26 .. v27}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 208
    .local v7, "callType":I
    move-object/from16 v23, p2

    .line 210
    .local v23, "tip":Ljava/lang/String;
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_a

    .line 211
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v26

    if-eqz v26, :cond_9

    .line 213
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 215
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    const-string v26, "android.permission.CALL_PHONE"

    sget-object v27, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 218
    .local v12, "flag":I
    if-nez v12, :cond_8

    .line 219
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.CALL"

    const-string/jumbo v27, "tel://"

    const-string/jumbo v28, "tel:"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 349
    .end local v12    # "flag":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_5
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 225
    .restart local v12    # "flag":I
    .restart local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_8
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.DIAL"

    const-string/jumbo v27, "tel://"

    const-string/jumbo v28, "tel:"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 231
    .end local v12    # "flag":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v10

    .line 232
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_5

    .line 235
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 238
    .local v8, "dialog":Landroid/app/AlertDialog;
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 240
    const/16 v26, -0x1

    const-string v27, "OK"

    new-instance v28, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$3;-><init>(Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;Ljava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 314
    const/16 v26, -0x2

    const-string v27, "Cancel"

    new-instance v28, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$4;-><init>(Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;Landroid/app/AlertDialog;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 323
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_5

    .line 327
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 329
    .restart local v14    # "packageManager":Landroid/content/pm/PackageManager;
    const-string v26, "android.permission.CALL_PHONE"

    sget-object v27, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 332
    .restart local v12    # "flag":I
    if-nez v12, :cond_b

    .line 333
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.CALL"

    const-string/jumbo v27, "tel://"

    const-string/jumbo v28, "tel:"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_5

    .line 345
    .end local v12    # "flag":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_5
    move-exception v10

    .line 346
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_5

    .line 339
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "flag":I
    .restart local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_b
    :try_start_c
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.DIAL"

    const-string/jumbo v27, "tel://"

    const-string/jumbo v28, "tel:"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 342
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->this$0:Lcom/mobisage/android/MobiSageAdPage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_5

    .line 350
    .end local v7    # "callType":I
    .end local v12    # "flag":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v23    # "tip":Ljava/lang/String;
    :cond_c
    :try_start_d
    const-string v26, "mailto"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 351
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.SEND"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    const-string v26, "message/rfc822"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 355
    :try_start_e
    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    if-eqz v26, :cond_d

    .line 356
    sget-object v26, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 360
    :cond_d
    :goto_6
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 357
    :catch_6
    move-exception v3

    .line 358
    .local v3, "ae":Landroid/content/ActivityNotFoundException;
    :try_start_f
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_6
.end method
