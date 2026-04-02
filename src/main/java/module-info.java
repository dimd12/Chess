module com.dimd12.chess {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.web;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;
    requires org.kordamp.ikonli.javafx;
    requires org.kordamp.bootstrapfx.core;
    //requires eu.hansolo.tilesfx;
    requires com.almasb.fxgl.all;

    opens com.dimd12.chess to javafx.fxml;
    exports com.dimd12.chess;
    exports com.dimd12.chess.controllers;
    opens com.dimd12.chess.controllers to javafx.fxml;
    exports com.dimd12.chess.scenes;
    opens com.dimd12.chess.scenes to javafx.fxml;
}